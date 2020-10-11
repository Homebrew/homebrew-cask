cask "recaf" do
  version "2.11.0"
  sha256 "fef13ee3eb867e12219cc7e257bc08fb54444ad38a7aa77923d2979ce26eb347"

  # github.com/Col-E/Recaf was verified as official when first introduced to the cask
  url "https://github.com/Col-E/Recaf/releases/download/#{version}/recaf-#{version}-J8-jar-with-dependencies.jar"
  appcast "https://github.com/Col-E/Recaf/releases.atom"
  name "Recaf"
  desc "Java bytecode editor"
  homepage "https://www.coley.software/Recaf"

  auto_updates true
  container type: :naked

  # Renamed for clarity: jar file contains necessary JavaFX dependancies
  app "recaf-#{version}-J8-jar-with-dependencies.jar", target: "Recaf.jar"

  # Ideally, we disable auto-updates with this preference
  postflight do
    FileUtils.mkdir_p ENV["HOME"]+"/Library/Preferences/Recaf/config"

    IO.write "#{ENV["HOME"]}/Library/Preferences/Recaf/config/update.json", <<~EOS
      {
        "update.active": false,
        "update.lastcheck": 1600000000000,
        "update.frequency": "WEEKLY"
      }
    EOS

    IO.write "#{ENV["HOME"]}/Library/Preferences/Recaf/config/backend.json", <<~EOS
      {
        "backend.firsttime": false
      }
    EOS
  end

  zap trash: "~/Library/Preferences/Recaf"

  caveats do
    depends_on_java "8+"
  end
end

cask "recaf" do
  version "2.18.1"
  sha256 "881b59bdf2d913bc7b7f50743a5e7ebee9e8fea99830b1b89e765db4a1635f09"

  url "https://github.com/Col-E/Recaf/releases/download/#{version}/recaf-#{version}-J8-jar-with-dependencies.jar",
      verified: "github.com/Col-E/Recaf/"
  appcast "https://github.com/Col-E/Recaf/releases.atom"
  name "Recaf"
  desc "Java bytecode editor"
  homepage "https://www.coley.software/Recaf"

  auto_updates true
  container type: :naked

  # Renamed for clarity: jar file name is overly complex
  app "recaf-#{version}-J8-jar-with-dependencies.jar", target: "Recaf.jar"

  zap trash: "~/Library/Preferences/Recaf"

  caveats do
    depends_on_java "8+"
  end
end

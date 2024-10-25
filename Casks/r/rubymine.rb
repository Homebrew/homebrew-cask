cask "rubymine" do
  arch arm: "-aarch64"

  version "2024.2.4,242.23726.97"
  sha256 arm:   "4ccaff57fe8605962797313b3dcea2b4f373249bbaa9e56f242acacbd88d5635",
         intel: "b3eec9db897a46c4becb5e1cd123d47879a2547632d11ec8c04e946182b74ccf"

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.csv.first}#{arch}.dmg"
  name "RubyMine"
  desc "Ruby on Rails IDE"
  homepage "https://www.jetbrains.com/ruby/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release"
    strategy :json do |json|
      json["RM"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "RubyMine.app"
  binary "#{appdir}/RubyMine.app/Contents/MacOS/rubymine"

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end

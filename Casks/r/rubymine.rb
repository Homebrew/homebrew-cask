cask "rubymine" do
  arch arm: "-aarch64"

  version "2024.1.6,241.19072.21"
  sha256 arm:   "1c9519c84925011fd1636fc60fc8e85d6762a3599583afffd4caa598358e9894",
         intel: "9c9bb99c91962fad9265026db760ccaa7ee04d219e76bd43a40a2989f55e3ad0"

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

cask "rubymine" do
  arch arm: "-aarch64"

  version "2024.1.3,241.17890.15"
  sha256 arm:   "a26d85b37141a4daacb0afbc58f269fdb5a5fbb49861a9881779e4b906a85ffe",
         intel: "ed9c8bd4fcc4e9756f60f44d4cbb74b47031cee52503f5dc869e98b1be988d9d"

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

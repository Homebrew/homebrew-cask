cask "rubymine" do
  arch arm: "-aarch64"

  version "2024.2.0.1,242.20224.425"
  sha256 arm:   "982773ca00ef81795b71137db98fce476fd554e13ef226ed86eb4d5abfc47f3c",
         intel: "bb51be85686deef7cf665a5bf8a461a846e2b69d64817d43c9c47a184ad98a24"

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

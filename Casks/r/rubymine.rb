cask "rubymine" do
  arch arm: "-aarch64"

  version "2026.2.4,262.11879.97"
  sha256 arm:   "39c9b99e7b67e0aabec5f7c8a6ffdab0db845d1f7d998d47f9813fec034369f7",
         intel: "007c34e950685f306f45b10df51c3162ab4fd59aa55c8663d61809b7d676d30a"

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.csv.first}#{arch}.dmg"
  name "RubyMine"
  desc "Ruby on Rails IDE"
  homepage "https://www.jetbrains.com/ruby/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release"
    strategy :json do |json|
      json["RM"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "RubyMine.app"
  command_wrapper "rubymine",
                  executable: "/usr/bin/open",
                  args:       ["-na", "RubyMine.app", "--args"]

  uninstall launchctl: "application.com.jetbrains.app.daemon.*",
            quit:      "com.jetbrains.rubymine"

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rubymine.plist",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end

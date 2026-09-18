cask "rubymine" do
  arch arm: "-aarch64"

  version "2026.2.3,262.10968.66"
  sha256 arm:   "e4f301ae01c2c6ae8df05dc1617fb795b037827efcd4868a3a8c2c3b85d8e232",
         intel: "96778e85b91f1b6245f4e575788e9605b5fd69aab69bb0453c2be480a6ec0769"

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

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end

cask "rubymine" do
  arch arm: "-aarch64"

  version "2026.2.1,262.9437.192"
  sha256 arm:   "aae091d13b0e6b3524fcfa7a336d2870f35857e30497026ff346c2d75890a3ca",
         intel: "6de071f1b139b0d0cce1a5af561f471701dee42834a9e10040af2129b773556a"

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

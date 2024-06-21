cask "rubymine" do
  arch arm: "-aarch64"

  version "2024.1.4,241.18034.63"
  sha256 arm:   "ad3ebd40266f40f5aadb152fc5e845bda1eb8de75923cf598072458dc92b8194",
         intel: "a4619da76349319b45a7bacbc49c3c53b8bd0769692e30f84f78a5c61ccd552b"

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

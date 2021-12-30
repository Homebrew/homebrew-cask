cask "rubymine" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2021.3,213.5744.254"

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "c3673db74ac4ce16b51ca3c1f0612e4d9b5f040a4b34855bf5cf2ae11f3bec43"
  else
    sha256 "75d29df3bf11305657a52984c8637c7bb9259dd78e11de67ba9a86e9584e57bf"
  end

  name "RubyMine"
  desc "Ruby on Rails IDE"
  homepage "https://www.jetbrains.com/ruby/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["RM"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "RubyMine.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "mine") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end

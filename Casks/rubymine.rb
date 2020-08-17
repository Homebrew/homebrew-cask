cask "rubymine" do
  version "2020.2,202.6397.95"
  sha256 "c2f60a7c7e8898542d28c2f9cc5eb2bab88578d7309ff4e09c69aed59f1f8d96"

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release"
  name "RubyMine"
  homepage "https://www.jetbrains.com/ruby/"

  auto_updates true

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

cask "rubymine" do
  version "2020.3.1,203.6682.166"
  sha256 "3dde9ce0f55899ae0921f47d0950b010cb56cde972c845280d52737eb2b65407"

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release"
  name "RubyMine"
  desc "Ruby on Rails IDE"
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

cask "rubymine" do
  version "2021.2.1,212.5080.58"

  if Hardware::CPU.intel?
    sha256 "d7460e6d18f1f65e955735da844e4ea8ae0c0b00c9d1fccf2b64beff57b531b1"

    url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  else
    sha256 "03b527103ded20fb6afc403794e5e88bf1953f528aca8b2e41cea8d04f7adee6"

    url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}-aarch64.dmg"
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

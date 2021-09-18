cask "rubymine" do
  version "2021.2.2,212.5284.50"

  if Hardware::CPU.intel?
    sha256 "6df4c28c518baff9128d748fc4bc2638a3aa466df51562ec0d9d9b1582240254"

    url "https://download.jetbrains.com/ruby/RubyMine-#{version.before_comma}.dmg"
  else
    sha256 "561531446c42e4b5f045b3a4042ff169c1667d6d6d00ec787ee8c5488320cf8d"

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

cask "pycharm-edu" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.1.1,221.5591.62"

  if Hardware::CPU.intel?
    sha256 "b27a1ebff26e341570ffcae4dce8a5124c6d904667ceac51d02d0ccd9e6b8903"
  else
    sha256 "b68584964badfb0241b27f71898f9a797ede86e69ade1b6228bceab8db1c1bde"
  end

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.csv.first}#{arch}.dmg"
  name "Jetbrains PyCharm Educational Edition"
  name "PyCharm Edu"
  desc "Professional IDE for scientific and web Python development"
  homepage "https://www.jetbrains.com/pycharm-edu/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["PCE"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "PyCharm Edu.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "charm") }.each do |path|
      if File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/PyCharmEdu#{version.major_minor}",
    "~/Library/Caches/PyCharmEdu#{version.major_minor}",
    "~/Library/Logs/PyCharmEdu#{version.major_minor}",
    "~/Library/Preferences/PyCharmEdu#{version.major_minor}",
  ]
end

cask "manictime" do
  version "2.2.0"
  sha256 "8bbb13a603e1c3286e51b2eb8bedfce9963c8e388ef982650b743032fc0896ea"

  url "https://cdn.manictime.com/setup/mac/ManicTime-v#{version}.dmg"
  name "ManicTime"
  desc "Time tracker that automatically collects computer usage data"
  homepage "https://www.manictime.com/Mac"

  livecheck do
    url "https://www.manictime.com/mac/download"
    regex(/ManicTime[._-]osx[._-]x64[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "ManicTime-v#{version}.pkg"

  uninstall pkgutil: "com.finkit.manictime.tracker"

  zap trash: "~/Library/Application Support/ManicTime"
end

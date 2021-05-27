cask "manictime" do
  version "2.1.2"
  sha256 "4707b62865d984bc0c1a59bcb7732533e15d8db51b6b50fb68b7c611a694886f"

  url "https://cdn.manictime.com/setup/mac/ManicTime-v#{version}.dmg"
  name "ManicTime"
  desc "Time tracker that automatically collects computer usage data"
  homepage "https://www.manictime.com/Mac"

  livecheck do
    url "https://www.manictime.com/mac/download"
    strategy :page_match
    regex(%r{href=.*?/ManicTime-v(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  pkg "ManicTime-v#{version}.pkg"

  uninstall pkgutil: "com.finkit.manictime.tracker"

  zap trash: "~/Library/Application Support/ManicTime"
end

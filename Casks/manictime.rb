cask "manictime" do
  version "2.1.1"
  sha256 "4c730fea10b98f4577d63b71536460193c7b308ac2bdc47cf3cee40b60e9a793"

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

cask "manictime" do
  version "2.0.33"
  sha256 "06205237e2b0a66e2cf68a293df2b0513fe4ffedd7e9b199273d4e517120f661"

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

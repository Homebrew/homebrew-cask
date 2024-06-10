cask "flomo" do
  version "0.1.5"
  sha256 "d3a2c4ec8af863e724c645352fed858c4331318591ba782b8aa7e4a666669fb2"

  url "https://flomo-resource.oss-cn-shanghai.aliyuncs.com/flomo_mac_v#{version}.zip",
      verified: "flomo-resource.oss-cn-shanghai.aliyuncs.com/"
  name "flomo"
  desc "Memo note taking and management app"
  homepage "https://flomoapp.com/"

  disable! date: "2024-01-01", because: :no_longer_available

  depends_on macos: ">= :catalina"

  app "flomo.app"

  zap trash: [
    "~/Library/Application Scripts/com.flomoapp.mac",
    "~/Library/Containers/com.flomoapp.mac",
  ]

  caveats do
    <<~EOS
      Flomo versions prior to 2.0 are no longer supported and newer versions
      are hosted on third-party file uploading sites that we can't use in the
      cask or check for new versions.

      See the homepage for alternative installation methods (Mac App Store,
      etc.).
    EOS
  end
end

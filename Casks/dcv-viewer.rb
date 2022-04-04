cask "dcv-viewer" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "2022.0.3973"

  if Hardware::CPU.intel?
    sha256 "4192d79260933dfe0dd60858b088f2f286b91b24749c69336fc3e455666d7f39"
  else
    sha256 "150bdc8fcfa12fb4a0647e4fcd7b05142ea47b65bf3b4e400e92e2584a175c39"
  end

  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.#{arch}.dmg",
      verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  name "NICE DCV Viewer"
  desc "Client for NICE DCV remote display protocol"
  homepage "https://www.nice-dcv.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/nice-dcv-viewer[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "DCV Viewer.app"

  zap trash: "~/Library/Preferences/com.nicesoftware.dcvviewer.plist"
end

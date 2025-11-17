cask "beid-viewer" do
  version "5.1.22"
  sha256 "925bf141569f0f27c28b54f25f2cfe61c5733a5bc5be4d1a2e827cdf3da21a80"

  url "https://eid.belgium.be/sites/default/files/software/eID%20Viewer-#{version}.dmg"
  name "Belgian eID Viewer"
  desc "Belgian ID card reader"
  homepage "https://eid.belgium.be/"

  livecheck do
    url "https://eid.belgium.be/en/download/22/license"
    regex(/href=.*?eID(?:(?:%20|\s)+|[._-])?Viewer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on cask: "beid-token"

  app "eID Viewer.app"
  # No zap stanza required
end

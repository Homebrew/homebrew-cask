cask "eid-viewer" do
  version "5.1.22"
  sha256 "925bf141569f0f27c28b54f25f2cfe61c5733a5bc5be4d1a2e827cdf3da21a80"

  url "https://eid.belgium.be/sites/default/files/software/eID%20Viewer-#{version}.dmg"
  name "Belgian EID Viewer"
  desc "This app allows to read the information off a Belgian eID"
  homepage "https://eid.belgium.be/"

  livecheck do
    skip "No version info available"
  end

  depends_on macos: ">= :high_sierra"

  app "eID Viewer.app"
end

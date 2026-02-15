cask "iriunwebcam" do
  version "2.9.1"
  sha256 "8aedd68699f0ba53f45ff2dafa4462f4dc0145c460808230b828e2638a2e2332"

  url "https://iriun.com/IriunWebcam-#{version}.pkg"
  name "Iriun"
  desc "Use your phone's camera as a wireless webcam"
  homepage "https://iriun.com/"

  livecheck do
    url :homepage
    regex(/href=.*?IriunWebcam[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :monterey"

  pkg "IriunWebcam-#{version}.pkg"

  uninstall launchctl: [
              "com.iriun.cmio.DPA.camera",
              "com.iriun.cmio.DPA.camerb",
              "com.iriun.cmio.DPA.camerc",
              "com.iriun.cmio.DPA.camerd",
            ],
            quit:      [
              "com.iriun.macwebcam",
              "com.iriun.webcam",
            ],
            pkgutil:   "com.iriun.*"

  zap trash: "~/Library/Saved Application State/com.iriun.macwebcam.savedState"
end

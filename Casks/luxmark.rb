cask "luxmark" do
  version "3.1"
  sha256 "eb103ac1bbee170c9fdecb2cd2bc6b70662a0a5f74bcf8e8edf1057d695291c0"

  url "https://github.com/LuxCoreRender/LuxMark/releases/download/luxmark_v#{version}/luxmark-macos64-v#{version}.zip",
      verified: "github.com/LuxCoreRender/LuxMark/"
  name "LuxMark"
  desc "OpenCL benchmark"
  homepage "http://www.luxmark.info/"

  livecheck do
    url :url
    regex(/^luxmark[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "LuxMark.app"
end

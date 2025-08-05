cask "luxmark" do
  version "3.1"
  sha256 "eb103ac1bbee170c9fdecb2cd2bc6b70662a0a5f74bcf8e8edf1057d695291c0"

  url "https://github.com/LuxCoreRender/LuxMark/releases/download/luxmark_v#{version}/luxmark-macos64-v#{version}.zip"
  name "LuxMark"
  desc "OpenCL benchmark"
  homepage "https://github.com/LuxCoreRender/LuxMark/"

  deprecate! date: "2024-10-12", because: :unmaintained

  app "LuxMark.app"

  caveats do
    requires_rosetta
  end
end

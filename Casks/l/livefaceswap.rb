cask "livefaceswap" do
  version "0.2.10"
  sha256 "3f7b72b94d5296a80a01122de91c7737628e32b5cac69250c3adc325dfe82c8a"

  url "https://github.com/LiveFaceSwapAI/livefaceswap/releases/download/v#{version}/LiveFaceSwap-Linux-#{version}-x86_64.AppImage"
  name "LiveFaceSwap AI Desktop"
  desc "Cloud-powered live face swap for OBS and video calls"
  homepage "https://livefaceswap.ai/desktop"

  depends_on arch: :x86_64
  depends_on :linux

  app_image "LiveFaceSwap-Linux-#{version}-x86_64.AppImage", target: "LiveFaceSwap.AppImage"
end

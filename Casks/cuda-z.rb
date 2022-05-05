cask "cuda-z" do
  version "0.10.251"
  sha256 "552081ce1f632a72231dedeb6c3ddb02b352d0b19eea45f9ae27d930ee9d7c35"

  url "https://downloads.sourceforge.net/cuda-z/CUDA-Z-#{version}.dmg"
  name "CUDA-Z"
  desc "Show basic information about CUDA-enabled GPUs and GPGPUs"
  homepage "http://cuda-z.sourceforge.net/"

  livecheck do
    url :homepage
    regex(/CUDA-Z-(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "CUDA-Z.app"
end

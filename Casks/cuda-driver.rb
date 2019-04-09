cask 'cuda-driver' do
  version '418.105'
  sha256 'a6aab3b64b0e8f42afbdadd28c99dc730ca2b803ca810a6fb2444204706966b2'

  url "http://us.download.nvidia.com/Mac/cuda_418/cudadriver_#{version}_macos.dmg"
  name 'NVIDIA CUDA Driver'
  homepage 'https://www.nvidia.com/object/macosx-cuda-418.105-driver.html'

  depends_on macos: '>= :high_sierra'

  pkg 'CUDADriver.pkg'

  uninstall pkgutil: 'com.nvidia.cuda.kext.pkg'
end
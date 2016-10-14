cask 'nvidia-web-driver' do
  version '367.15.10.05f01'
  sha256 'acc36f56fc64dd296786bc0927a51e519e55bfed6249985c120b19a810b29808'

  url "http://us.download.nvidia.com/Mac/Quadro_Certified/#{version}/WebDriver-#{version}.pkg"
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/download/driverResults.aspx/107369/en-us'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end

cask 'nvidia-web-driver' do
  version '346.03.15f03'
  sha256 'd93be8e22ed3caf99b18b3bbab37fcc193df6def0dd451aecad5ff6b81ccc4d8'

  url "http://us.download.nvidia.com/Mac/Quadro_Certified/#{version}/WebDriver-#{version}.pkg"
  name 'NVIDIA Web Driver'
  homepage 'http://www.nvidia.com/download/driverResults.aspx/107369/en-us'
  license :commercial

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end

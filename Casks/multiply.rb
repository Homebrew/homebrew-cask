cask :v1 => 'multiply' do
  version '1.1.1'
  sha256 'f4056d2e88886ee30ad8a6e05efcfcf37559a26190753610067248087ec4abff'

  url 'http://acondigital.com/software/Multiply_OSX_1_1_1.pkg.zip'
  name 'Multiply'
  homepage 'https://acondigital.com/products/multiply/'
  license :gratis

  pkg 'Multiply_OSX_1_1_1.pkg'

  uninstall :pkgutil => 'com.Acon.Multiply',
            :delete => '/Library/Audio/Plug-Ins/VST/Multiply.vst'
end

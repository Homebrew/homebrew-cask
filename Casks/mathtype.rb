cask :v1 => 'mathtype' do
  version '6.7'
  sha256 :no_check

  url "http://www.dessci.com/en/dl/MTM#{version.gsub('.', '')}h_EN.pkg"
  name 'MathType'
  homepage 'www.dessci.com'
  license :commercial

  installer :manual => "MTM#{version.gsub('.', '')}h_EN.pkg"
  # pkg "MTM#{version.gsub('.', '')}h_EN.pkg"
  uninstall :pkgutil => "com.dessci.mathtype#{version.gsub('.', '')}Hf.MathType.pkg",
    :trash => '/Applications/MathType 6/MathType 6 Install Log.txt',
    :rmdir => '/Applications/MathType 6'
end

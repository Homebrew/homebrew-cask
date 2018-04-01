cask 'picaxe-compilers' do
  version :latest
  sha256 :no_check

  url 'http://www.picaxe.com/downloads/picaxe_mac_intel.zip'
  name 'PICAXE Compilers'
  homepage 'http://www.picaxe.com/Software/Drivers/PICAXE-Compilers/'

  [
    '08',
    '08m',
    '08m2',
    '08m2le',
    '14m',
    '14m2',
    '18',
    '18a',
    '18m',
    '18m2',
    '18x',
    '18x_1',
    '20m',
    '20m2',
    '20x2',
    '28',
    '28a',
    '28x',
    '28x1',
    '28x1_0',
    '28x2',
    '28x_1',
  ].each do |v|
    binary "picaxe#{v}"
  end
end

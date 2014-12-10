cask :v1 => 'ibank' do

  if MacOS.version <= :leopard
    version '3.5.7'
    sha256 '9f02f1465e1d3539246298ab165953d13c2cfb800814c5093e239c72ef1817b6'
    url "https://www.iggsoft.com/ibank/iBank#{version.to_i}_Web.dmg"
    app 'iBank.app'
  elsif MacOS.version <= :lion
    version '4.7.5'
    sha256 'c814bfe23b8eb368ca1f8252468a53f5db19175560a82003322142fdde573e2e'
    url "https://www.iggsoft.com/ibank/iBank#{version.to_i}_Web.dmg"
    app 'iBank.app'
  else
    version :latest
    sha256 :no_check
    url 'https://www.iggsoft.com/ibank/iBank5_Web.dmg'
    app 'iBank 5.app'
  end

  homepage 'http://www.iggsoftware.com/ibank'
  license :unknown    # todo: improve this machine-generated value
end

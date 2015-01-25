cask :v1 => 'qlvideo' do
  version '1.81'
  sha256 'e901bf38a02c630dfddb34eb31a897155d7e16e503dd44ec9e6c8fed09ee62bb'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.gsub('.', '')}/QLVideo_#{version.gsub('.', '')}.pkg"
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.gsub('.', '')}.pkg"

  uninstall :pkgutil => 'uk.org.marginal.qlvideo'
end

cask 'qlvideo' do
  version '1.90'
  sha256 'e16d39361766ae0dce9d275a80c883be9e3919224d58c5bc8e1f8d7a98a0b53a'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom',
          checkpoint: 'a31f0ec8353080d78bdec447a3adf5c218cd1742aaa59aeaab440ea51427b70a'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'

  pkg "QLVideo_#{version.no_dots}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qlvideo'
end

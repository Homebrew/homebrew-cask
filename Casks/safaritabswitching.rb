class Safaritabswitching < Cask
  version '1.2.6'
  sha256 'd2823ec2327c5b5e2602876749f6c6ef352cfe7b5498158cc46c5610f6bf9b69'

  url "https://github.com/rs/SafariTabSwitching/releases/download/#{version}/Safari.Tab.Switching-#{version}.pkg"
  homepage 'https://github.com/rs/SafariTabSwitching'

  pkg "Safari.Tab.Switching-#{version}.pkg"
  uninstall :pkgutil => 'net.rhapsodyk.SafariTabSwitching.pkg'
end

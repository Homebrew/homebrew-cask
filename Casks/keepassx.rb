cask 'keepassx' do
  version '2.0.3'
  sha256 '44271fef18fd07a29241e5324be407fa8edce77fb0b55c5646cd238092cdf823'

  url "https://www.keepassx.org/releases/#{version}/KeePassX-#{version}.dmg"
  name 'KeePassX'
  homepage 'https://www.keepassx.org/'

  app 'KeePassX.app'

  uninstall_preflight do
    set_ownership "#{appdir}/KeePassX.app"
  end

  zap trash: '~/.keepassx'
end

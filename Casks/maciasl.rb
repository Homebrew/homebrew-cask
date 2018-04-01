cask 'maciasl' do
  if MacOS.version == :lion
    version '1.3'
    sha256 '6ba1eafbdf8d954f3c72fc4d5d9e06e15b101522ac253772a06c8579c45675de'

    url "https://downloads.sourceforge.net/maciasl/#{version}/MaciASL_Lion.zip"
  else
    version '1.4'
    sha256 '24c0dbaa9a13231b8c8e364ef0e6d60656718320ce69d8bb23aa5bc27e82e87d'

    url "https://downloads.sourceforge.net/maciasl/#{version}/MaciASL.zip"
    appcast 'https://sourceforge.net/projects/maciasl/rss',
            checkpoint: '5d54d6eec240c14766700261db0f1bed7a0978ea7fd07ada29d5377d955de9b7'
  end

  name 'MaciASL'
  homepage 'https://sourceforge.net/projects/maciasl/'

  depends_on macos: '>= :lion'

  app 'MaciASL.app'
end

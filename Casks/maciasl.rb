cask 'maciasl' do
  if MacOS.version == :lion
    version '1.3'
    sha256 '6ba1eafbdf8d954f3c72fc4d5d9e06e15b101522ac253772a06c8579c45675de'

    url "https://downloads.sourceforge.net/maciasl/#{version}/MaciASL_Lion.zip"
  else
    version '1.5.2'
    sha256 '279e4fea7fae95ee00cb773b1a96c1312113c5bf009471bf46c4c03ccb43c14d'

    url "https://github.com/acidanthera/MaciASL/releases/download/#{version}/#{version}.RELEASE.zip"
    appcast 'https://github.com/acidanthera/MaciASL/releases.atom'
  end

  name 'MaciASL'
  homepage 'https://github.com/acidanthera/MaciASL'

  depends_on macos: '>= :lion'

  app 'MaciASL.app'
end

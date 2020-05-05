cask 'finicky' do
  version '2.4.0'
  sha256 '629919196850586d64f8242de412027a1f0a29cb1e87a3d7dba19c95814b50cb'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'

  depends_on macos: '>= :sierra'

  app 'Finicky.app'
end

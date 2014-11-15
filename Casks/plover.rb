cask :v1 => 'plover' do
  version '2.5.8'
  sha256 'a8bbeddb5d6fb8d4499844257035edd62e431a4f1eb7959bdf17a15c1cbe12de'

  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/Plover.dmg"
  homepage 'http://stenoknight.com/wiki/Main_Page'
  license :oss

  app 'plover.app'

  caveats do
    assistive_devices
  end
end

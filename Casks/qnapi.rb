cask :v1 => 'qnapi' do
  version '0.1.6-rc2'
  sha256 'f47f1c6ceae4fb2c3a5f22a2c7a0ff9a3c0e2fa84297cb699cd1f9a5e8931faf'

  url "http://downloads.sourceforge.net/project/qnapi/qnapi/qnapi-#{version}/QNapi-#{version}.dmg.bz2"
  # This is a horrible hack to force the file extension.  The
  # backend code should be fixed so that this is not needed.
  preflight do
    system '/bin/mv', '--', staged_path.join("qnapi-#{version}"), staged_path.join("qnapi-#{version}.dmg")
  end
  container :nested => "qnapi-#{version}.dmg"
  name 'qnapi'
  homepage 'http://krzemin.iglu.cz/qnapi'
  license :gpl

  app 'QNapi.app'

end

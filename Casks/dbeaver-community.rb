cask :v1 => 'dbeaver-community' do
  version '3.2.0'

  if Hardware::CPU.is_32_bit?
    sha256 '707e83f17e2dd0906d82f95b440064142424fbe18aceb1c1c1f66a78425c9ffc'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86.zip"
  else
    sha256 'b2789cd47d440fbafb251c12e3319947c20ccb35eac25fc95426c0da784888ec'
    url "http://dbeaver.jkiss.org/files/dbeaver-#{version}-macosx.cocoa.x86_64.zip"
  end

  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'dbeaver/dbeaver.app'
end

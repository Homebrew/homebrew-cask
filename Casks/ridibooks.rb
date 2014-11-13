cask :v1 => 'ridibooks' do
  version :latest
  sha256 :no_check

  url 'http://ridibooks.com/getapp?os=mac'
  homepage 'http://ridibooks.com/support/introduce_appdown'
  license :unknown

  container :type => :naked
  preflight do
    system '/bin/mv', '--', staged_path.join('getapp'), destination_path.join('ridibooks.pkg')
  end
  pkg 'ridibooks.pkg'
  uninstall :pkgutil => 'com.ridibooks.Ridibooks'
end

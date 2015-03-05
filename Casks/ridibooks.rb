cask :v1 => 'ridibooks' do
  version :latest
  sha256 :no_check

  url 'http://ridibooks.com/getapp?os=mac'
  homepage 'http://ridibooks.com/support/introduce_appdown'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :type => :naked
  preflight do
    system '/bin/mv', '--', staged_path.join('getapp'), staged_path.join('ridibooks.pkg')
  end
  pkg 'ridibooks.pkg'

  uninstall :pkgutil => 'com.ridibooks.Ridibooks'
end

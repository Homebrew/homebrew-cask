cask 'helix-versioning-engine' do
  version '16.2'
  sha256 '1f013168fe33939d808c7775e3e6a9661531ebc0798dbdfc709d49233cf23304'

  url "http://cdist2.perforce.com/perforce/r#{version}/bin.darwin90x86/helix-versioning-engine.tgz"
  name 'Helix Versioning Engine'
  homepage 'http://www.perforce.com/'

  binary 'p4'
  binary 'p4broker'
  binary 'p4d'
  binary 'p4p'

  caveats <<-EOS.undent
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end

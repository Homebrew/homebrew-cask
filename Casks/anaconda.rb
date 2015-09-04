cask :v1 => 'anaconda' do
  version '2.3.0'
  sha256 'c4bb59a57bf44dde80612041bbbcfd2e5cab8534842209ef456da7a46f919c33'

  url "https://repo.continuum.io/archive/Anaconda-#{version}-MacOSX-x86_64.sh"
  name 'Anaconda'
  homepage 'https://store.continuum.io/cshop/anaconda/'
  license :gratis
  tags :vendor => 'Continuum Analytics'

  installer :script => 'Anaconda-#{version}-MacOSX-x86_64.sh',
            :args => [ '-b', '-p', '#{staged_path}' ]

  app 'Launcher.app'

  depends_on :macos => '>= :lion'

  caveats do
      <<-EOS.undent
      To use Anaconda from the command line, you must add the 
      $ANACONDA_ROOT/bin directory to your PATH environment variable.
      For bash shell, add these lines to ~/.bash_profile:

        export ANACONDA_ROOT=#{staged_path}
        export PATH=$ANACONDA_ROOT/bin:"$PATH"

  EOS
  end
end

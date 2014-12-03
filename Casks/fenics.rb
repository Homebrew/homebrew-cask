cask :v1 => 'fenics' do
  version '1.4.0'
  sha256 'b0071fa25759fcef124e418c202cc81d297d12633b24385b70b9408af76c2bb5'

  url "http://www.fenicsproject.org/pub/software/fenics/fenics-#{version}-osx10.9.dmg"
  homepage 'http://fenicsproject.org/'
  license :unknown

  app 'FEniCS.app'

  depends_on :macos => '>= :mavericks'

  caveats do
    <<-EOS.undent
      FEniCS is designed to work with the OS X system Python (v. 2.7.5 in OS X 10.9).

      If you are using a standard bash shell and system Python, you can make FEniCS
      available when you start your shell by adding the following to the .profile
      file in your home directory:

        source #{staged_path}/FEniCS.app/Contents/Resources/share/fenics/fenics.conf

      If you are using an alternate shell (e.g., zsh, csh) or a modified or brewed Python,
      be sure to launch FEniCS using a clean (bash) shell.
      Creating a new shell using the following command works well:

        /bin/bash --rcfile #{staged_path}/FEniCS.app/Contents/Resources/share/fenics/fenics.conf
    EOS
  end
end

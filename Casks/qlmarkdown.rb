cask :v1 => 'qlmarkdown' do
  version '1.3.4'
  sha256 'a290edf5b6124cbd4e526217e0979a9011c8ef3b964a33458f5063d51a9b15f2'

  url "https://github.com/toland/qlmarkdown/releases/download/v#{version}/QLMarkdown.qlgenerator.zip"
  appcast 'https://github.com/toland/qlmarkdown/releases.atom'
  name 'QLMarkdown'
  homepage 'https://github.com/toland/qlmarkdown'
  license :bsd

  # Fix broken zip file with no toplevel bundle directory.  This was
  # not needed for version 1.3.2.  We could add an option to the main
  # DSL to identify such containers and generate a target directory.
  container :type => :naked
  preflight do
    system '/usr/bin/ditto', '-xk', '--', "#{staged_path}/QLMarkdown.qlgenerator.zip", "#{staged_path}/QLMarkdown.qlgenerator"
  end

  qlplugin 'QLMarkdown.qlgenerator'
end

cask :v1 => 'qlmarkdown' do
  version '1.3.3'
  sha256 '045712562665673924397bbbef1ee1157b44e23c9744feda6feda27e107802d3'

  url "https://github.com/toland/qlmarkdown/releases/download/v#{version}/QLMarkdown.qlgenerator.zip"
  homepage 'https://github.com/toland/qlmarkdown'
  license :oss

  # Fix broken zip file with no toplevel bundle directory.  This was
  # not needed for version 1.3.2.  We could add an option to the main
  # DSL to identify such containers and generate a target directory.
  container :type => :naked
  preflight do
    system '/usr/bin/ditto', '-xk', '--', "#{staged_path}/QLMarkdown.qlgenerator.zip", "#{staged_path}/QLMarkdown.qlgenerator"
  end

  qlplugin 'QLMarkdown.qlgenerator'
end

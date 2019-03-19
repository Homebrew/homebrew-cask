cask 'scilab' do
  version '6.0.2'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  url "https://www.scilab.org/download/#{version}/scilab-#{version}-x86_64.dmg"
  name 'Scilab'
  homepage 'https://www.scilab.org/'

  app "scilab-#{version}.app"

  caveats do
    depends_on_java '6'
  end
end

cask 'retrobatch' do
  version '1.4'
  sha256 '84a0e88d8d83d213b013c251070b76980a393b130143a5ea10341a5c3799e445'

  url 'https://flyingmeat.com/download/Retrobatch.zip'
  appcast "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
  name 'Retrobatch'
  homepage 'https://flyingmeat.com/retrobatch/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Retrobatch.app'
end

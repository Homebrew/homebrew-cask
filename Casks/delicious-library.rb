cask 'delicious-library' do
  version '3.5.1'
  sha256 '2531b501123dead97516eef4c8203d85d309214d90c590de46612839273a3e2c'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast 'https://www.delicious-monster.com/downloads/DeliciousLibrary3.xml',
          checkpoint: 'e73107a2cc6dd89db3f2fd047078d826984b33a11bf3ec60a8704bdf2619a6ef'
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'
  license :commercial

  app "Delicious Library #{version.major}.app"
end

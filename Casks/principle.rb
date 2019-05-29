cask 'principle' do
  version '5.8'
  sha256 'db05b5282a1bab73cd58476f1a9738cadee533cd1a1c543ec3825280612eb9fa'

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://principleformac.com/update2.xml'
  name 'Principle'
  homepage 'https://principleformac.com/'

  depends_on macos: '>= :high_sierra'

  app 'Principle.app'
end

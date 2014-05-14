class Anxiety < Cask
  url 'http://www.anxietyapp.com/Anxiety.zip'
  appcast 'http://www.anxietyapp.com/appcast/appcast.xml'
  homepage 'http://www.anxietyapp.com/'
  version 'latest'
  sha256 :no_check
  nested_container 'Anxiety.dmg'
  link 'Anxiety.app'
end

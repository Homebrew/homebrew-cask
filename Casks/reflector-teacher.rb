cask 'reflector-teacher' do
  version '3.0.2'
  sha256 '1d9d2db04d6b5d4c2a4150718693792a813560d0af20d5afa8a067617f70558f'

  url "https://download.airsquirrels.com/ReflectorTeacher/Mac/ReflectorTeacher-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/ReflectorTeacher/Mac/ReflectorTeacher.xml'
  name 'Reflector Teacher'
  homepage 'http://www.airsquirrels.com/reflector/teacher'

  app 'Reflector Teacher.app'
end

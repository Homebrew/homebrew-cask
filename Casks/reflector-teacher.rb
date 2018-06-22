cask 'reflector-teacher' do
  version '3.1.1'
  sha256 '5db3c9144d2d7f9b8487fda12d6c9d81ad6e87c516baadc33eb28d598d051b9d'

  url "https://download.airsquirrels.com/ReflectorTeacher/Mac/ReflectorTeacher-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/ReflectorTeacher/Mac/ReflectorTeacher.xml'
  name 'Reflector Teacher'
  homepage 'http://www.airsquirrels.com/reflector/teacher'

  app 'Reflector Teacher.app'
end

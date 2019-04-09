cask 'reflector-teacher' do
  version '3.2.0'
  sha256 '5a52c9f34545526729432c2f8ae46e013242ee05eb307d78874fc93988a935b5'

  url "https://download.airsquirrels.com/ReflectorTeacher/Mac/ReflectorTeacher-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/ReflectorTeacher/Mac/ReflectorTeacher.xml'
  name 'Reflector Teacher'
  homepage 'https://www.airsquirrels.com/reflector/teacher'

  app 'Reflector Teacher.app'
end

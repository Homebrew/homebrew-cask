cask 'concept2-utility' do
    if MacOS.version <= :el_capitan
        version '7.09.02'
        sha256 'e4ebee8cde57c7ef63c3903285c3fc0ee8f87221e7c5529b9dcf97b3f9ebb57e'
    else
        version '7.09.07'
        sha256 '425e81c49d52ea1f3a84a9a1e004beaacee0b7556a03235d8be7a9869b81adcd'
    end

    url "http://software.concept2.com/utility/Concept2Utility#{version}.dmg"
    name 'Concept2 Utility'
    homepage 'http://www.concept2.com/service/software/concept2-utility'
    depends_on macos: '>= :yosemite'
    app 'Concept2 Utility.app'
end

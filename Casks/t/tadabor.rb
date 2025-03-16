cask "tadabor" do
    version "2.6.0"
    
    # SHA256 for ARM and Intel versions
    sha256 arm: "aa3de07efa30508b1c849da6aa1f3b5f589ff06f10fdc2531b412cd93a2270cc", # ARM version
           intel: "e3a693f9b2ebc8f1ce61e76f167e1c8093f49b67a5c8721c5b1570c3a16f9c53" # Intel version
  
    # Define the URL based on architecture
    url Hardware::CPU.arm? ? 
      "https://github.com/mohammed-ashrf/MediSync_Release/releases/download/V2/Tadabor_2.6.0_aarch64.dmg" :
      "https://github.com/mohammed-ashrf/MediSync_Release/releases/download/V2/Tadabor_2.6.0_x64.dmg"
  
    name "Tadabor"
    desc "A comprehensive study companion designed for meaningful engagement by Mohammed Younis"
    homepage "https://tadabor.vercel.app"
  
    # Preflight: Check for existing installation (optional)
    preflight do
      if File.exist?("/Applications/Tadabor.app") && !File.exist?("#{staged_path}/Tadabor.app")
        opoo "Existing Tadabor.app found in /Applications. Use --force to overwrite."
      end
    end
  
    app "Tadabor.app"
  
    # Post-install: Remove quarantine flag
    postflight do
      # Remove quarantine attribute
      system_command "/usr/bin/xattr",
                     args: ["-d", "com.apple.quarantine", "#{appdir}/Tadabor.app"],
                     sudo: false
  
      # Verify installation
      unless File.exist?("#{appdir}/Tadabor.app")
        odie "Installation failed: Tadabor.app not found in #{appdir}."
      end
    end
  
    # Cleanup on uninstall
    uninstall delete: "/Applications/Tadabor.app"
  
    zap trash: [
      "~/Library/Application Support/Tadabor",
      "~/Library/Preferences/com.Tadabor.plist"
    ]
end
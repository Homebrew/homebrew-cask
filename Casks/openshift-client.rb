cask "openshift-client" do
  version "4.10.25"

  if Hardware::CPU.intel?
    sha256 "a8eca3a0c8605db4750657037bb0f5d134fe11cee0189efab949807fc84d4c44"
  else
    sha256 "e5e0dc68430b4953b1b7ac5f7c62c28e9878790386a4abc653370fa03ad6a12f"
  end

  arch = Hardware::CPU.intel? ? "" : "-arm64"
  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
